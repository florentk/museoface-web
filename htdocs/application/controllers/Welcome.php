<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->helper(array('form', 'url')); 
    $this->load->library(array('session','form_validation'));
    $this->load->model(array('VisiteurModel')); 
  }

	public function index()
	{
		$this->enregistrement();
	}

	public function enregistrement()
	{
		$this->load->view('enregistrement');
		
	}
	
	public function choix_quete()
	{
		$this->load->view('choix_quete');
		
	}
	
	public function quete()
	{
	  $login_id = $this->session->userdata("visiteur_id");
	  $quete_id = $this->input->get('quete');
	  
	  $this->VisiteurModel->setQueteId($login_id,$quete_id);
	  redirect( base_url("index.php/welcome/valide_portrait"));
	}
	
	
	public function verif_portrait()
	{
		$login_id = $this->session->userdata("visiteur_id");
	  $quete_id = $this->input->get('quete');
	  $v = $this->VisiteurModel->getVisiteur($login_id);
	  $p = $this->VisiteurModel->getPortraitFromQuete($v->quete_id);
	 
	  $code = $this->input->post('portrait_id');
	 
	  if ($p->portrait_id == $code){
	    $this->VisiteurModel->setPortraitId($login_id,$p->portrait_id);
	    redirect( base_url("index.php/welcome/choix_fond"));
	  }else
	    $this->valide_portrait(1);
	  
	}
	
	public function choix_fond()
	{
			$login_id = $this->session->userdata("visiteur_id");
	    $v = $this->VisiteurModel->getVisiteur($login_id);
	    if($v->portrait_id){
	      $this->load->view('choix_fond');
	    }else
	      valide_portrait($recommence=1);
	}
	
	public function valide_fond()
	{
	  $fond_id = strtoupper(trim($this->input->post('fond_id')));
		$login_id = $this->session->userdata("visiteur_id");
	  $v = $this->VisiteurModel->getVisiteur($login_id);	  
	  $file_name =  "img/fond_$fond_id.jpg";
	  if(file_exists( $file_name )){
	    $this->VisiteurModel->setFondId($login_id,$fond_id);
	    $data['portrait'] = $this->VisiteurModel->getPortrait($v->portrait_id);
		  $data['pseudo'] = $v->pseudo;
		  $data['fond_id'] = $fond_id;
		  $data['email'] = $v->mail;
		  $data['img'] = $file_name;
	    $this->load->view('fin',$data);
	  }else
	    $this->choix_fond();
	  
	}
	
	public function valide_portrait($recomence=0)
	{
	  $login_id = $this->session->userdata("visiteur_id");
	  $quete_id = $this->input->get('quete');
	  $v = $this->VisiteurModel->getVisiteur($login_id);
	  $p = $this->VisiteurModel->getPortraitFromQuete($v->quete_id);
	  $data['titre'] = $p->titre;
	  $data['desc'] = $p->descriptif;
	  $data['recommence'] = $recomence;
	  
	  $this->load->view('valide_quete',$data);
	}
	
	public function ajout_visiteur()
	{
	  $pseudo=($this->input->post('pseudo'));
	  $email=($this->input->post('email'));
	  
	  $id = $this->VisiteurModel->addVisiteur($pseudo,$email);
	  
	  if($id){
	    $this->session->set_userdata(array('visiteur_id'  => $id));
	    redirect( base_url("index.php/welcome/choix_quete"));
	  }else
	    enregistrement();
	   
	  
	 # $this->VisiteurModel->setQueteId($id,2);
	}
	
	public function get_fond()
	{
	
	  $email=($this->input->get('email'));
	  $v = $this->VisiteurModel->getVisiteurFromMail($email);
	  
	  echo $v->fond_id;
	
	}
	
	public function send_image()
	{
	
	  $email=($this->input->post('email'));
	  $v = $this->VisiteurModel->getVisiteurFromMail($email);
    
	  if($v)
	    $file_id = date('YmdHis', time());  #$v->visiteur_id;
	  else{
	    $file_id = 0;
	    $uploadOk = 0;
	  }
	  
    $target_dir = "uploads/";
    $target_file = $target_dir . "result_" .$file_id.".jpg";
    $uploadOk = 1;
    
    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"])) {
        $check = getimagesize($_FILES["result"]["tmp_name"]);
        if($check !== false) {
            echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            echo "File is not an image.";
            $uploadOk = 0;
        }
    }
    // Check file size
    if ($_FILES["result"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["result"]["tmp_name"], $target_file)) {
            echo "The file has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }	

	
	}	
	
	
	public function gallery()
	{
	
	 $cdir = scandir("uploads"); 
   foreach ($cdir as $key => $value) 
   { 
      if (!in_array($value,array(".","..",".keep"))) 
      { 
          $images[] = $value; 
      } 
   } 
   
   $data['images'] = array_reverse($images);
   $this->load->view('gallery',$data);
	
	}
	
	
	
	
}

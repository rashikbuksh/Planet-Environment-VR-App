using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class sceneChange : MonoBehaviour
{

    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //next scene
        if(Input.GetKeyDown(KeyCode.H) || Input.GetButtonDown("Fire2")){
            changeScene();
        }
        //prev scene
        if(Input.GetKeyDown(KeyCode.G) || Input.GetButtonDown("Fire3")){
            changeScene2();
        }
    }
    //next scene
    public void changeScene()
    {
        if(SceneManager.GetActiveScene().name=="welcomeScene"){
            SceneManager.LoadScene("MarsScene");
        }
        if(SceneManager.GetActiveScene().name=="MarsScene"){
            SceneManager.LoadScene("Moon_terrain_4");
        }
        if(SceneManager.GetActiveScene().name=="Moon_terrain_4"){
            SceneManager.LoadScene("uranus");
        }
        if(SceneManager.GetActiveScene().name=="uranus"){
            SceneManager.LoadScene("saturn");
        }
        if(SceneManager.GetActiveScene().name=="saturn"){
            SceneManager.LoadScene("Snow_mountain_scene");
        }
    }
    //prev scene
    public void changeScene2()
    {
        if(SceneManager.GetActiveScene().name=="MarsScene"){
            SceneManager.LoadScene("welcomeScene");
        }
        if(SceneManager.GetActiveScene().name=="Moon_terrain_4"){
            SceneManager.LoadScene("MarsScene");
        }
        if(SceneManager.GetActiveScene().name=="uranus"){
            SceneManager.LoadScene("Moon_terrain_4");
        }
        if(SceneManager.GetActiveScene().name=="saturn"){
            SceneManager.LoadScene("uranus");
        }
        if(SceneManager.GetActiveScene().name=="Snow_mountain_scene"){
            SceneManager.LoadScene("saturn");
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class playermovement : MonoBehaviour
{
    public float movementSpeed;
    public float turningSpeed;

    private Rigidbody rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // käyttäjän syöte
        float inputHorizonal = Input.GetAxis("Horizontal");
        float inputVertical = Input.GetAxis("Vertical");

        // Kääntyminen
        if (inputHorizonal != 0)
        {
            Vector3 turning = Vector3.up * inputHorizonal * turningSpeed;
            rb.angularVelocity = turning;
        }

        //liikkuminen
        if (inputVertical != 0)
        {
            Vector3 movement = Vector3.Scale(new Vector3(1, 0, 1), transform.forward) * inputVertical * movementSpeed;
            rb.velocity = movement;
        }
    }
}

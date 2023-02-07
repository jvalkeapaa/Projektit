using UnityEngine;
using System.Collections;

public class EnemyMovement : MonoBehaviour
{

    //https://youtu.be/EwHiMQ3jdHw?t=1032

    public int rotateSpeed = 5;
    public int movementSpeed = 5;

    public int maxDistance = 2;

    private Transform myTransform;
    public Transform target;


    private Transform currentWaypoint;
    [SerializeField] private Waypoints waypoints;
    [SerializeField] 

    // Use this for initialization
    void Start()
    {
        GameObject go = GameObject.FindGameObjectWithTag("Player");
        target = go.transform;

        myTransform = transform;
    }

    // Update is called once per frame
    void Update()
    {
        moveTowardsPlayer();
    }

    void moveTowardsPlayer()
    {
        //rotate enemy
        myTransform.rotation = Quaternion.Slerp(myTransform.rotation, Quaternion.LookRotation(target.position - myTransform.position), rotateSpeed * Time.deltaTime);
        if (Vector3.Distance(target.position, myTransform.position) > maxDistance)
        {
            //move
            myTransform.position += myTransform.forward * movementSpeed * Time.deltaTime;
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            Destroy(collision.gameObject);
        }
    }
}
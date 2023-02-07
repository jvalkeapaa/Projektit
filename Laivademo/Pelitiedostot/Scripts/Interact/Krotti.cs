using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class Krotti : MonoBehaviour, I_interactable
{
    AudioSource source;


    [SerializeField] private string _prompt;

    public string InteractionPrompt => _prompt;

    public void Awake()
    {
        source = GetComponent<AudioSource>();
    }

    public bool Interact(Interactor interactor)
    {
        UnityEngine.Debug.Log("Run!");
        source.Play();
        return true;
    }
}

using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class Lighthouse : MonoBehaviour, I_interactable
{
    [SerializeField] private string _prompt;

    public string InteractionPrompt => _prompt;

    public bool Interact(Interactor interactor)
    {
        UnityEngine.Debug.Log("Searching...");
        return true;
    }
}


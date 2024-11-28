<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class EmailClassName extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */


    protected $baseUrl;
    protected $settings;
    protected $vid;
    protected $title;
    protected $email;
    
    public function __construct($settings, $vid, $title,$email)
    {
        $requestScheme = isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http';
        $host = $_SERVER['HTTP_HOST'];
        $this->baseUrl = $requestScheme . '://' . $host;
        
        $this->settings = $settings;
        $this->vid = $vid;
        $this->title = $title;
        $this->email = $email;
        
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Email Class Name',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'view.email',
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }

    public function build()
    {
        return $this->view('email')
            ->replyTo('Inspectmyride99@gmail.com', $this->title.'PDF') // Optional: Add a reply-to address
            ->with([
                'baseUrl' => $this->baseUrl,
                'settings' => $this->settings,
                'vid' => $this->vid,
                'title' => $this->title,
                'email' => $this->email,
            ]);
    }
}
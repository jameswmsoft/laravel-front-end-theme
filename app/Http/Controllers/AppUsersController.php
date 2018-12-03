<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AppUsers;
use App\Http\Requests;
use App\Http\Controllers\JoshController;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Response;
use Sentinel;
use Cviebrock\EloquentTaggable\Taggable;


class AppUsersController extends JoshController
{


    private $tags;

    public function __construct()
    {
        parent::__construct();
        $this->tags = AppUsers::allTags();
    }

    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {
        // Grab all the blogs
        $users = AppUsers::latest()->paginate(5);
        $tags = $this->tags;
        // Show the page
        return view('blog', compact('users', 'tags'));
    }

    /**
     * @param string $slug
     * @return \Illuminate\View\View
     */
    public function getAppUsers($slug = '')
    {

        $users = AppUsers::where('slug', $slug)->first();
        if ($users) {
            $users->increment('views');
        } else {
            abort('404');
        }
        // Show the page
        return view('blogitem', compact('$users'));
    }

    /**
     * @param $tag
     * @return \Illuminate\View\View
     */
    public function getBlogTag($tag)
    {
        info($tag);
        $blogs = AppUsers::withAnyTags($tag)->paginate(5);
        $tags = $this->tags;
        return view('blog', compact('blogs', 'tags'));
    }

    /**
     * @param BlogCommentRequest $request
     * @param Blog $blog
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function storeComment(BlogCommentRequest $request, Blog $blog)
    {
        $blogcooment = new BlogComment($request->all());
        $blogcooment->blog_id = $blog->id;
        $blogcooment->save();
        return redirect('blogitem/' . $blog->slug);
    }

}
<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $jmlctgr = Category::count();
        $jmlpost   = Post::count();
        $jmluser       = User::count();
        $jmltag       = Tag::count();
        return view('dashboard.index', [
            'jmlctgr' => $jmlctgr,
            'jmlpost' => $jmlpost,
            'jmluser' => $jmluser,
            'jmltag'  => $jmltag
        ]);
    }
}

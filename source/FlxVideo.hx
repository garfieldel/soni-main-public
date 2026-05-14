#if android
import extension.videoview.VideoView;
#end
import flixel.FlxBasic;

class FlxVideo extends FlxBasic
{
	public var finishCallback:Void->Void = null;

	public function new(name:String)
	{
		super();

		#if android
		VideoView.playVideo('assets/videos/$name.mp4'); // the video can be in any format (e.g., .webm, .mkv, .etc)
		VideoView.onCompletion = function()
		{
			if (finishCallback != null)
			{
				finishCallback();
			}
		}
		#end
	}
}

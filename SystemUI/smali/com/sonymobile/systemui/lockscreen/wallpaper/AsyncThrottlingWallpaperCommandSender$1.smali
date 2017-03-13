.class Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;
.super Ljava/lang/Object;
.source "AsyncThrottlingWallpaperCommandSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$postTimestamp:J

.field final synthetic val$weakView:Ljava/lang/ref/WeakReference;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;
    .param p2, "val$postTimestamp"    # J
    .param p5, "val$command"    # Ljava/lang/String;
    .param p6, "val$x"    # I
    .param p7, "val$y"    # I

    .prologue
    .line 144
    .local p4, "val$weakView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    iput-wide p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$postTimestamp:J

    iput-object p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$weakView:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$command:Ljava/lang/String;

    iput p6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$x:I

    iput p7, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;)Lcom/sonymobile/keyguard/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v4

    .line 148
    .local v4, "executeTimestamp":J
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    iget-wide v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$postTimestamp:J

    .line 149
    iget-object v6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$weakView:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$command:Ljava/lang/String;

    iget v8, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$x:I

    iget v9, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->val$y:I

    .line 148
    invoke-static/range {v1 .. v9}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->-wrap1(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    .line 152
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->-wrap0(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;I)V

    .line 146
    return-void
.end method

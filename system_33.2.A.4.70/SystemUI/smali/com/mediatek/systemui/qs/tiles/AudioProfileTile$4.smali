.class Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;
.super Landroid/os/Handler;
.source "AudioProfileTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-wrap1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method

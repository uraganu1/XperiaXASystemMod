.class final Lcom/mediatek/audioprofile/Editprofile$H;
.super Landroid/os/Handler;
.source "Editprofile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/Editprofile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/Editprofile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$H;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    .line 602
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile$H;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    :pswitch_0
    return-void

    .line 609
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$H;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v0}, Lcom/mediatek/audioprofile/Editprofile;->-get3(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 612
    :pswitch_2
    const-string/jumbo v0, "@M_AudioProfile/EditProfile"

    const-string/jumbo v1, "Ringtone changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$H;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v0}, Lcom/mediatek/audioprofile/Editprofile;->-get3(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->ringtoneChanged()V

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

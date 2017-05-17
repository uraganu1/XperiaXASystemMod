.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1210
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1211
    packed-switch p1, :pswitch_data_0

    .line 1209
    :goto_0
    :pswitch_0
    return-void

    .line 1214
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    goto :goto_0

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

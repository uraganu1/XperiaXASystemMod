.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ConferenceCallDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->initDurationView()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->showDialog(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dlg"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getActionUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

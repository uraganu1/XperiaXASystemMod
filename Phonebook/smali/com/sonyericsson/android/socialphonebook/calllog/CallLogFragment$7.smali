.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->requestVoicemailContent(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1799
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetch voicemail failed! uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/net/Uri;)V

    .line 1793
    return-void
.end method

.method public onTimeout(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09011a

    .line 1805
    const/4 v2, 0x0

    .line 1804
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1803
    return-void
.end method

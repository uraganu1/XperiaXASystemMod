.class Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$2;
.super Ljava/lang/Object;
.source "SocialPhonebookActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcsRequestHandled(IZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Not able to refresh RCS capabilities for contacts!"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 153
    return-void
.end method

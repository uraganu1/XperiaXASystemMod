.class Lcom/android/contacts/quickcontact/QuickContactActivity$12;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcsRequestHandled(IZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get17(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 879
    return-void
.end method

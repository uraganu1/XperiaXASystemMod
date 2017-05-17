.class final Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$2;
.super Ljava/lang/Object;
.source "AutoAcceptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->newInstance()Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/setting/ImSettingApi;)V
    .locals 0
    .param p1, "val$imSettingApi"    # Lcom/sonymobile/jms/setting/ImSettingApi;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$2;->val$imSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$2;->val$imSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileTransfersAutoAccepted(Z)V

    .line 29
    return-void
.end method

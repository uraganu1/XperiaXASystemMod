.class Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;
.super Ljava/lang/Object;
.source "DeleteCallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

.field final synthetic val$deleteMode:Ljava/lang/String;

.field final synthetic val$info:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    .param p2, "val$deleteMode"    # Ljava/lang/String;
    .param p3, "val$info"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->val$deleteMode:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->val$info:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->val$deleteMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$1;->val$info:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;->onDeleteConfirm(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V

    .line 96
    return-void
.end method

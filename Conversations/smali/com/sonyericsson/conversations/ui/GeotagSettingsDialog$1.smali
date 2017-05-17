.class Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;
.super Ljava/lang/Object;
.source "GeotagSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;->createSettingsDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;->this$0:Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2, v1}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;->-wrap0(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;ILandroid/content/Context;)V

    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 33
    return-void
.end method

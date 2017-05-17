.class Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$2;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$2;->this$0:Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 41
    return-void
.end method

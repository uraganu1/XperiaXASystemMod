.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayDualCdmaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 154
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 156
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

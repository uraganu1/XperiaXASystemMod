.class public Lcom/mediatek/contacts/widget/ImportExportItem;
.super Landroid/widget/LinearLayout;
.source "ImportExportItem.java"


# instance fields
.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/widget/ImportExportItem;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "ImportExportItem"

    const-string/jumbo v1, "[setActivated]radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/mediatek/settings/DisplaySettingsExt$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/DisplaySettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/DisplaySettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-static {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->-get1(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/android/settings/DropDownPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-static {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->-get1(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/android/settings/DropDownPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-static {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->-get0(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x1

    .line 267
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    .line 265
    :cond_0
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

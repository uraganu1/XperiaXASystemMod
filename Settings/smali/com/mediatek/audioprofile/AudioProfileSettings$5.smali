.class Lcom/mediatek/audioprofile/AudioProfileSettings$5;
.super Landroid/os/Handler;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileSettings;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->-get3(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->-get1(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 204
    :cond_0
    return-void
.end method

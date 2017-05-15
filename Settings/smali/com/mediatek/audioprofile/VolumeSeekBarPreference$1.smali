.class Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/VolumeSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->-get0(Lcom/mediatek/audioprofile/VolumeSeekBarPreference;)Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->-get0(Lcom/mediatek/audioprofile/VolumeSeekBarPreference;)Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;->onSampleStarting(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    .line 128
    :cond_0
    return-void
.end method

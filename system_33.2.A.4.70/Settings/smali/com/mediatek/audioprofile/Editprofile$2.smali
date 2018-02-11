.class Lcom/mediatek/audioprofile/Editprofile$2;
.super Ljava/lang/Object;
.source "Editprofile.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/Editprofile;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/Editprofile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$2;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 387
    const-string/jumbo v2, "@M_AudioProfile/EditProfile"

    const-string/jumbo v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$2;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->-get2(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$2;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->-get1(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "@M_AudioProfile/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$2;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->-wrap0(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 391
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "vibrateEnabled":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 394
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$2;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->-get2(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 396
    const-string/jumbo v2, "@M_AudioProfile/EditProfile"

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrate setting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 398
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "vibrateEnabled":Ljava/lang/String;
    :cond_0
    return-void
.end method

.class public interface abstract Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
.super Ljava/lang/Object;
.source "ViltePlugin.java"


# virtual methods
.method public abstract addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
.end method

.method public abstract getContactDetailOptionMenuRefreshVisibility(Ljava/util/Set;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;"
        }
    .end annotation
.end method

.method public abstract getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
.end method

.method public abstract getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
.end method

.method public abstract getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
.end method

.method public abstract getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
.end method

.method public abstract isVideoCallingGroupSupported()Z
.end method

.method public abstract isVilteEnabled()Z
.end method

.method public abstract isVilteSupported()Z
.end method

.method public abstract onApplicationCreate()V
.end method

.method public abstract refreshCapability(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerForVideoCallEntityStatus(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
.end method

.method public abstract setVilteEnabled(Z)V
.end method

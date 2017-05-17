.class public abstract Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;
.super Ljava/lang/Object;
.source "AbstractViltePlugin.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isVideoCallingGroupSupported()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public setVilteEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

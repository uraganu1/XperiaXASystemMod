.class public interface abstract Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
.super Ljava/lang/Object;
.source "DualSimStateChecker.java"


# virtual methods
.method public abstract bothSimsAreEnabled()Z
.end method

.method public abstract checkSimsState(Landroid/content/Context;)V
.end method

.method public abstract getOnlyEnabledSim()I
.end method

.method public abstract getSubscriptions()[I
.end method

.method public abstract isMultiSimEnabled()Z
.end method

.method public abstract registerListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V
.end method

.method public abstract unregisterListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V
.end method

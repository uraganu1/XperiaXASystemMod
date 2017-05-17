.class public interface abstract Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;
.super Ljava/lang/Object;
.source "CallPlusConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallPlusConnectorListener"
.end annotation


# virtual methods
.method public abstract onCallPlusServiceConnected()V
.end method

.method public abstract onCallPlusServiceDisconnected()V
.end method

.method public abstract onCapabilitiesUpdated(Landroid/content/Intent;)V
.end method

.class public interface abstract Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;
.super Ljava/lang/Object;
.source "ResultDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCallBack"
.end annotation


# static fields
.field public static final CANCEL_BUTTON:I = 0x2

.field public static final OK_BUTTON:I = 0x1

.field public static final OK_CANCEL_BUTTON:I


# virtual methods
.method public abstract getButtonMode()I
.end method

.method public abstract getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method public abstract getNegativeResource()I
.end method

.method public abstract getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method public abstract getPositiveResource()I
.end method

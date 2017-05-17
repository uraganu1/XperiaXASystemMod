.class public interface abstract Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;
.super Ljava/lang/Object;
.source "GroupPhonePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onDone(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)V"
        }
    .end annotation
.end method

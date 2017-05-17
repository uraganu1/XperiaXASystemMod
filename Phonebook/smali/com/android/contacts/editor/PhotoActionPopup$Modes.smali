.class public final Lcom/android/contacts/editor/PhotoActionPopup$Modes;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhotoActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Modes"
.end annotation


# static fields
.field public static final NO_PHOTO:I = 0x4

.field public static final PHOTO_ALLOW_PRIMARY:I = 0xf

.field public static final PHOTO_DISALLOW_PRIMARY:I = 0xe

.field public static final PHOTO_DISALLOW_REMOVE:I = 0xc

.field public static final PHOTO_SELECT_ONLY:I = 0x5

.field public static final READ_ONLY_ALLOW_PRIMARY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

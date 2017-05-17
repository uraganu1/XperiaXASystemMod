.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendCommonDataKinds$ExtendGroupRingtone;
.super Ljava/lang/Object;
.source "SemcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendCommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendGroupRingtone"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.android.group.ringtone"

.field public static final RINGTONE:Ljava/lang/String; = "data1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupPhoto;
.super Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;
.source "GroupExtDataKinds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupPhoto"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.android.group.photo"

.field public static final PHOTO:Ljava/lang/String; = "data15"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;-><init>(Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;)V

    return-void
.end method

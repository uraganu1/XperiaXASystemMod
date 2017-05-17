.class public final enum Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;
.super Ljava/lang/Enum;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationIconLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

.field public static final enum BOTTOM_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

.field public static final enum BOTTOM_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

.field public static final enum TOP_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

.field public static final enum TOP_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    const-string/jumbo v1, "TOP_END"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    const-string/jumbo v1, "TOP_START"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    const-string/jumbo v1, "BOTTOM_START"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    const-string/jumbo v1, "BOTTOM_END"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    .line 258
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 258
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    return-object v0
.end method

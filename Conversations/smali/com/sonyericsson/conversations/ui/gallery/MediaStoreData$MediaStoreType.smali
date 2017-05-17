.class public final enum Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
.super Ljava/lang/Enum;
.source "MediaStoreData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaStoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

.field public static final enum IMAGE:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

.field public static final enum VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .line 38
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->IMAGE:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    sget-object v1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->IMAGE:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->$VALUES:[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->$VALUES:[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    return-object v0
.end method

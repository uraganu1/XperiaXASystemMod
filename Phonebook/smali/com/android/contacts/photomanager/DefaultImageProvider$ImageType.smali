.class public final enum Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;
.super Ljava/lang/Enum;
.source "DefaultImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/photomanager/DefaultImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

.field public static final enum DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

.field public static final enum HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

.field public static final enum THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    const-string/jumbo v1, "HD_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 32
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    const-string/jumbo v1, "THUMBNAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 33
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->HD_IMAGE:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->THUMBNAIL:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->DEFAULT:Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->$VALUES:[Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;->$VALUES:[Lcom/android/contacts/photomanager/DefaultImageProvider$ImageType;

    return-object v0
.end method

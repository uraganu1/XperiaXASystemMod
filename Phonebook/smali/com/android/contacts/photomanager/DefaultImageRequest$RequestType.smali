.class final enum Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
.super Ljava/lang/Enum;
.source "DefaultImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/photomanager/DefaultImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

.field public static final enum ACCOUNT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

.field public static final enum CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

.field public static final enum GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

.field public static final enum ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const-string/jumbo v1, "ICE"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 21
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 22
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const-string/jumbo v1, "ACCOUNT"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ACCOUNT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 23
    new-instance v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    const-string/jumbo v1, "CONTACT"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ICE:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->GROUP:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->ACCOUNT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->CONTACT:Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->$VALUES:[Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;->$VALUES:[Lcom/android/contacts/photomanager/DefaultImageRequest$RequestType;

    return-object v0
.end method

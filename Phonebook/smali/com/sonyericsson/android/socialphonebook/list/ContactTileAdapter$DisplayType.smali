.class public final enum Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;
.super Ljava/lang/Enum;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum FREQUENT_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum STARRED_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum STREQUENT:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

.field public static final enum STREQUENT_PHONE_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "STREQUENT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "STREQUENT_PHONE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "STARRED_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "FREQUENT_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 93
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "GROUP_MEMBERS"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 100
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const-string/jumbo v1, "GROUP_EDITOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;-><init>(Ljava/lang/String;I)V

    .line 104
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

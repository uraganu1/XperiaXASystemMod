.class public final enum Lcom/android/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EXT_GROUP:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 96
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 97
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 98
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 99
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ORGANIZATION"

    invoke-direct {v0, v1, v7}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 100
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 101
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 102
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "WEBSITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "SIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 104
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 105
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NOTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 106
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "BIRTHDAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 107
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 108
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ANDROID_CUSTOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 109
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "EXT_GROUP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EXT_GROUP:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 94
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->EXT_GROUP:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public static values()[Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

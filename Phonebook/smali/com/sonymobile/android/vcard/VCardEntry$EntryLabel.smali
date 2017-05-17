.class public final enum Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 93
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 94
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 95
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 96
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ORGANIZATION"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 97
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 98
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 99
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "WEBSITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 100
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "SIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 101
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 102
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "NOTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "BIRTHDAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 104
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 105
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const-string/jumbo v1, "ANDROID_CUSTOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    const/16 v0, 0xe

    .line 91
    new-array v0, v0, [Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    .line 91
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

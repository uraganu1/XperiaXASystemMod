.class public final enum Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;
.super Ljava/lang/Enum;
.source "ContactDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

.field public static final enum RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

.field public static final enum RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    const-string/jumbo v1, "RCS_CONTACTS"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    const-string/jumbo v1, "RCS_FAVORITE_CONTACTS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    return-object v0
.end method

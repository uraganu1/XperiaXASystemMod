.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;
.super Ljava/lang/Object;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneEntry"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final NAME:Ljava/lang/String; = "tag"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SECONDNUMBER:Ljava/lang/String; = "secondNumber"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumbder:Ljava/lang/String;

.field private mSecondNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aNumbder"    # Ljava/lang/String;
    .param p3, "aSecondNumber"    # Ljava/lang/String;
    .param p4, "aAddress"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mNumbder:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mSecondNumber:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mAddress:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mNumbder:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mType:I

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mNumbder:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mSecondNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mType:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$PhoneEntry;->mName:Ljava/lang/String;

    .line 116
    return-void
.end method

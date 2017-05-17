.class public Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;
.super Landroid/content/CursorLoader;
.source "IceMedicalInformationLoader.java"


# static fields
.field static final MEDICAL_INFO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 17
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 18
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "data4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 16
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;->MEDICAL_INFO_PROJECTION:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 22
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ProfileMedicalInformation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationLoader;->MEDICAL_INFO_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getMedicalInfoData(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 27
    const/4 v3, 0x0

    .line 28
    .local v3, "medicalInfo":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const-string/jumbo v5, "data1"

    .line 29
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "allergies":Ljava/lang/String;
    const-string/jumbo v5, "data2"

    .line 31
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "medication":Ljava/lang/String;
    const-string/jumbo v5, "data3"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "donor":Ljava/lang/String;
    const-string/jumbo v5, "data4"

    .line 34
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "additionalInfo":Ljava/lang/String;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .end local v3    # "medicalInfo":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
    invoke-direct {v3, v1, v4, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0    # "additionalInfo":Ljava/lang/String;
    .end local v1    # "allergies":Ljava/lang/String;
    .end local v2    # "donor":Ljava/lang/String;
    .end local v4    # "medication":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

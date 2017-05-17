.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/request/zzf;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final versionCode:I

.field public final zzHA:Landroid/os/Bundle;

.field public final zzHB:Z

.field public final zzHC:Landroid/os/Messenger;

.field public final zzHD:I

.field public final zzHE:I

.field public final zzHF:F

.field public final zzHG:Ljava/lang/String;

.field public final zzHH:J

.field public final zzHI:Ljava/lang/String;

.field public final zzHJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHL:J

.field public final zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

.field public final zzHN:Ljava/lang/String;

.field public final zzHO:F

.field public final zzHP:I

.field public final zzHQ:I

.field public final zzHs:Landroid/os/Bundle;

.field public final zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzHu:Landroid/content/pm/PackageInfo;

.field public final zzHv:Ljava/lang/String;

.field public final zzHw:Ljava/lang/String;

.field public final zzHx:Ljava/lang/String;

.field public final zzHy:Landroid/os/Bundle;

.field public final zzHz:I

.field public final zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field public final zzrH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzri:Ljava/lang/String;

.field public final zzrj:Ljava/lang/String;

.field public final zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/zzf;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FII)V
    .locals 3
    .param p1, "versionCode"    # I
    .param p2, "adPositionBundle"    # Landroid/os/Bundle;
    .param p3, "adRequest"    # Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .param p4, "adSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .param p5, "adUnitId"    # Ljava/lang/String;
    .param p6, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p7, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p8, "querySpamSignals"    # Ljava/lang/String;
    .param p9, "sequenceNumber"    # Ljava/lang/String;
    .param p10, "sessionId"    # Ljava/lang/String;
    .param p11, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p12, "stats"    # Landroid/os/Bundle;
    .param p13, "nativeVersion"    # I
    .param p15, "contentInfo"    # Landroid/os/Bundle;
    .param p16, "useHTTPS"    # Z
    .param p17, "prefetchMessenger"    # Landroid/os/Messenger;
    .param p18, "screenWidth"    # I
    .param p19, "screenHeight"    # I
    .param p20, "screenDensity"    # F
    .param p21, "viewHierarchy"    # Ljava/lang/String;
    .param p22, "correlationId"    # J
    .param p24, "requestId"    # Ljava/lang/String;
    .param p26, "slotId"    # Ljava/lang/String;
    .param p27, "nativeAdOptions"    # Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .param p29, "connectionStartTime"    # J
    .param p31, "capabilityParcel"    # Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    .param p32, "anchorStatus"    # Ljava/lang/String;
    .param p33, "appVolume"    # F
    .param p34, "targetApi"    # I
    .param p35, "adapterViewPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            "FII)V"
        }
    .end annotation

    .prologue
    .local p14, "nativeTemplates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p25, "experimentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p28, "nativeCustomTemplateIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHs:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrj:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHu:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHv:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHw:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHx:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHy:Landroid/os/Bundle;

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHz:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrH:Ljava/util/List;

    if-eqz p28, :cond_0

    invoke-static/range {p28 .. p28}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHK:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHA:Landroid/os/Bundle;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHB:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHC:Landroid/os/Messenger;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHD:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHE:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHF:F

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHG:Ljava/lang/String;

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHH:J

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHI:Ljava/lang/String;

    if-eqz p25, :cond_1

    invoke-static/range {p25 .. p25}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHJ:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzri:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-wide/from16 v0, p29

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHL:J

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHN:Ljava/lang/String;

    move/from16 v0, p33

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHO:F

    move/from16 v0, p34

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHP:I

    move/from16 v0, p35

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzHQ:I

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzf;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method

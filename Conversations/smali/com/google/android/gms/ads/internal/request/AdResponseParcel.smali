.class public final Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;


# instance fields
.field public body:Ljava/lang/String;

.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I

.field public final zzBQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzBU:J

.field private zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzEF:Ljava/lang/String;

.field public final zzHB:Z

.field public final zzHS:J

.field public final zzHT:Z

.field public final zzHU:J

.field public final zzHV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHW:Ljava/lang/String;

.field public final zzHX:J

.field public final zzHY:Ljava/lang/String;

.field public final zzHZ:Z

.field public final zzIa:Ljava/lang/String;

.field public final zzIb:Ljava/lang/String;

.field public final zzIc:Z

.field public final zzId:Z

.field public final zzIe:Z

.field public final zzIf:I

.field public zzIg:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

.field public zzIh:Ljava/lang/String;

.field public zzIi:Ljava/lang/String;

.field public zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzIk:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzIl:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzIm:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzuk:Z

.field public zzul:Z

.field public zzum:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .param p1, "versionCode"    # I
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .param p7, "interstitialTimeoutInMillis"    # J
    .param p9, "isMediation"    # Z
    .param p10, "mediationConfigCacheTimeInMillis"    # J
    .param p13, "refreshIntervalInMillis"    # J
    .param p15, "orientation"    # I
    .param p16, "adSizeString"    # Ljava/lang/String;
    .param p17, "fetchTime"    # J
    .param p19, "debugDialog"    # Ljava/lang/String;
    .param p20, "isJavascriptTag"    # Z
    .param p21, "passbackUrl"    # Ljava/lang/String;
    .param p22, "activeViewJSON"    # Ljava/lang/String;
    .param p23, "isCustomRenderAllowed"    # Z
    .param p24, "isNative"    # Z
    .param p25, "useHTTPS"    # Z
    .param p26, "contentUrlOptedOut"    # Z
    .param p27, "isPrefetched"    # Z
    .param p28, "panTokenStatus"    # I
    .param p29, "bodyTeleporter"    # Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;
    .param p30, "csiLatencyInfo"    # Ljava/lang/String;
    .param p31, "gwsQueryId"    # Ljava/lang/String;
    .param p32, "isFluid"    # Z
    .param p33, "isNativeExpress"    # Z
    .param p34, "rewardItemParcel"    # Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;
    .param p37, "isUsingDisplayedImpression"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZI",
            "Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "clickUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "impressionUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p12, "manualTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p35, "rewardVideoStartUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p36, "rewardVideoGrantedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-nez p4, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBQ:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-nez p6, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBR:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHS:J

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHT:Z

    iput-wide p10, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHU:J

    if-nez p12, :cond_3

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHV:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBU:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHW:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHX:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHZ:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIa:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIb:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIc:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzuk:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHB:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzId:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIe:Z

    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIf:I

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIg:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIh:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzul:Z

    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzum:Z

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIj:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIk:Ljava/util/List;

    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIl:Ljava/util/List;

    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIm:Z

    return-void

    :cond_1
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIg:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIg:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    sget-object v3, Lcom/google/android/gms/ads/internal/request/StringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/request/StringParcel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzgz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzgz()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzh;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Landroid/os/Parcel;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/StringParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzIg:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    goto :goto_0
.end method

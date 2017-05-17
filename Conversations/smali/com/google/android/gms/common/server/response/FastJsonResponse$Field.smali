.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastJsonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/zza;


# instance fields
.field private final mVersionCode:I

.field protected final zzamL:I

.field protected final zzamM:Z

.field protected final zzamN:I

.field protected final zzamO:Z

.field protected final zzamP:Ljava/lang/String;

.field protected final zzamQ:I

.field protected final zzamR:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzamS:Ljava/lang/String;

.field private zzamT:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

.field private zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/ConverterWrapper;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "typeIn"    # I
    .param p3, "typeInArray"    # Z
    .param p4, "typeOut"    # I
    .param p5, "typeOutArray"    # Z
    .param p6, "outputFieldName"    # Ljava/lang/String;
    .param p7, "safeParcelableFieldId"    # I
    .param p8, "concreteTypeName"    # Ljava/lang/String;
    .param p9, "wrappedConverter"    # Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamL:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamM:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamN:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamO:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamP:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamQ:I

    if-eqz p8, :cond_0

    const-class v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamR:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    :goto_0
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->zzrh()Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    :goto_1
    return-void

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamR:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    goto :goto_1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    return-object v0
.end method


# virtual methods
.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    .prologue
    .local p1, "output":Ljava/lang/Object;, "TO;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamM:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamN:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamO:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamQ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzru()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrt()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrt()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/zza;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamT:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    return-void
.end method

.method public zzrj()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamL:I

    return v0
.end method

.method public zzrk()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamN:I

    return v0
.end method

.method public zzrp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamM:Z

    return v0
.end method

.method public zzrq()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamO:Z

    return v0
.end method

.method public zzrr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamP:Ljava/lang/String;

    return-object v0
.end method

.method public zzrs()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamQ:I

    return v0
.end method

.method public zzrt()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamR:Ljava/lang/Class;

    return-object v0
.end method

.method zzru()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public zzrv()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method zzrw()Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamU:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-static {v0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public zzrx()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamT:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamT:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzamS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->zzcR(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

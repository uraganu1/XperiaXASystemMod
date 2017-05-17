.class Lcom/google/android/gms/internal/zzmr$zza;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzahb:I

.field public final zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zzahd:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field final synthetic zzahe:Lcom/google/android/gms/internal/zzmr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmr;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahe:Lcom/google/android/gms/internal/zzmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahd:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClient #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahb:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahe:Lcom/google/android/gms/internal/zzmr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmr;->zzd(Lcom/google/android/gms/internal/zzmr;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmr$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahe:Lcom/google/android/gms/internal/zzmr;

    iget v3, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahb:I

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzmr$zzb;-><init>(Lcom/google/android/gms/internal/zzmr;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzpC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method

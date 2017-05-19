.class public final Lcom/android/settings/applications/ProcStatsEntry;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsEntry$Service;,
        Lcom/android/settings/applications/ProcStatsEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z


# instance fields
.field final mAvgBgMem:J

.field final mAvgRunMem:J

.field mBestTargetPackage:Ljava/lang/String;

.field final mBgDuration:J

.field final mBgWeight:D

.field public mLabel:Ljava/lang/CharSequence;

.field final mMaxBgMem:J

.field final mMaxRunMem:J

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRunDuration:J

.field final mRunWeight:D

.field mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    .line 291
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsEntry$1;-><init>()V

    .line 290
    sput-object v0, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 52
    new-instance v4, Landroid/util/ArrayMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 90
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V
    .locals 4
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tmpBgTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p4, "tmpRunTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p5, "useUss"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 57
    invoke-static {p1, p3, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 58
    invoke-static {p1, p4, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 59
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iput v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 61
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 64
    if-eqz p5, :cond_1

    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 65
    if-eqz p5, :cond_2

    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    :goto_1
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 66
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 67
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 68
    if-eqz p5, :cond_3

    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    :goto_2
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 69
    if-eqz p5, :cond_4

    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    :goto_3
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 70
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 71
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, " avgpss="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, " weight="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    goto :goto_0

    .line 65
    :cond_2
    iget-wide v0, p3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    goto :goto_1

    .line 68
    :cond_3
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    goto :goto_2

    .line 69
    :cond_4
    iget-wide v0, p4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "mem"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 76
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 78
    iput-object p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 79
    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 80
    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 81
    long-to-double v0, p4

    long-to-double v2, p6

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 82
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ProcStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New proc entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string/jumbo v2, " avgpss="

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string/jumbo v2, " weight="

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 3
    .param p1, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .restart local v0    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    new-instance v1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service;-><init>(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V
    .locals 34
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p3, "bgTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p4, "runTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p6, "useUss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ProcessStats;",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p5, "compare":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 122
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v4, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": single pkg "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 124
    return-void

    .line 129
    :cond_1
    const/16 v16, 0x0

    .local v16, "ipkg":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 130
    const-string/jumbo v2, "android"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 132
    return-void

    .line 129
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 137
    :cond_3
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v26, "subProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 140
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/util/SparseArray;

    .line 141
    .local v30, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v19, 0x0

    .local v19, "ivers":I
    :goto_2
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    .line 142
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 143
    .local v22, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    const-string/jumbo v5, ":"

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    if-nez v22, :cond_5

    .line 146
    const-string/jumbo v4, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No package state found for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 146
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    const-string/jumbo v5, " in process "

    .line 146
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 150
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 151
    .local v3, "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v3, :cond_6

    .line 152
    const-string/jumbo v4, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No process "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " found in package state "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    const-string/jumbo v5, "/"

    .line 152
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 152
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    :cond_6
    new-instance v2, Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 138
    .end local v3    # "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v22    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 161
    .end local v19    # "ivers":I
    .end local v30    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1a

    .line 162
    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v4, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v32

    cmpl-double v2, v4, v6

    if-lez v2, :cond_a

    .line 164
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v4, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": best pkg "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 164
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    const-string/jumbo v5, " weight "

    .line 164
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 164
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    const-string/jumbo v5, " better than "

    .line 164
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 164
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    const-string/jumbo v5, " weight "

    .line 164
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 164
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 169
    return-void

    .line 174
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    move-wide/from16 v20, v0

    .line 175
    .local v20, "maxWeight":D
    const-wide/16 v12, -0x1

    .line 176
    .local v12, "bestRunTime":J
    const/4 v11, 0x0

    .line 177
    .local v11, "bestPersistent":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_1b

    .line 178
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/applications/ProcStatsEntry;

    .line 179
    .local v24, "subProc":Lcom/android/settings/applications/ProcStatsEntry;
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v20, v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_c

    .line 180
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    const-string/jumbo v5, " weight "

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 180
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    const-string/jumbo v5, " too small"

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 186
    :cond_c
    :try_start_0
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 187
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v2, :cond_d

    .line 188
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    const-string/jumbo v5, " has no icon"

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 211
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v14

    .line 212
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 213
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 213
    const-string/jumbo v5, " failed finding app info"

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 192
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :try_start_1
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_11

    .line 193
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    move-wide/from16 v28, v0

    .line 194
    .local v28, "thisRunTime":J
    if-eqz v11, :cond_e

    cmp-long v2, v28, v12

    if-lez v2, :cond_10

    .line 195
    :cond_e
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    const-string/jumbo v5, " new best pers run time "

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_f
    move-wide/from16 v12, v28

    .line 199
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 201
    :cond_10
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string/jumbo v5, " pers run time "

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    const-string/jumbo v5, " not as good as last "

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 206
    .end local v28    # "thisRunTime":J
    :cond_11
    if-eqz v11, :cond_12

    .line 207
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    const-string/jumbo v5, " is not persistent"

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 216
    :cond_12
    const/16 v25, 0x0

    .line 217
    .local v25, "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const/16 v17, 0x0

    .local v17, "isp":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "NSP":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v8, :cond_13

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 219
    .local v27, "subServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 220
    move-object/from16 v25, v27

    .line 224
    .end local v25    # "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .end local v27    # "subServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_13
    const-wide/16 v28, 0x0

    .line 225
    .restart local v28    # "thisRunTime":J
    if-eqz v25, :cond_15

    .line 226
    const/16 v18, 0x0

    .local v18, "iss":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "NSS":I
    :goto_7
    move/from16 v0, v18

    if-ge v0, v9, :cond_15

    .line 227
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 228
    .local v23, "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 224
    const-wide/16 v6, 0x0

    .line 228
    cmp-long v2, v4, v6

    if-lez v2, :cond_18

    .line 229
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    const-string/jumbo v5, " service "

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    const-string/jumbo v5, " run time is "

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 229
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_14
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    move-wide/from16 v28, v0

    .line 237
    .end local v9    # "NSS":I
    .end local v18    # "iss":I
    .end local v23    # "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    :cond_15
    cmp-long v2, v28, v12

    if-lez v2, :cond_19

    .line 238
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 239
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 239
    const-string/jumbo v5, " new best run time "

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_16
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 241
    move-wide/from16 v12, v28

    goto/16 :goto_5

    .line 217
    .end local v28    # "thisRunTime":J
    .restart local v25    # "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .restart local v27    # "subServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 226
    .end local v25    # "subProcServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .end local v27    # "subServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .restart local v9    # "NSS":I
    .restart local v18    # "iss":I
    .restart local v23    # "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    .restart local v28    # "thisRunTime":J
    :cond_18
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 243
    .end local v9    # "NSS":I
    .end local v18    # "iss":I
    .end local v23    # "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    :cond_19
    sget-boolean v2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ProcStatsEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Eval pkg of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 244
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 244
    const-string/jumbo v5, " run time "

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 245
    const-string/jumbo v5, " not as good as last "

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 248
    .end local v8    # "NSP":I
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "bestPersistent":Z
    .end local v12    # "bestRunTime":J
    .end local v15    # "i":I
    .end local v17    # "isp":I
    .end local v20    # "maxWeight":D
    .end local v24    # "subProc":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v28    # "thisRunTime":J
    :cond_1a
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 119
    :cond_1b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 273
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 277
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 283
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method
.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
.super Ljava/lang/Object;
.source "KeyguardComponentFactoryEntry.java"


# instance fields
.field public final additionalInformationResourceName:Ljava/lang/String;

.field public final enabled:Z

.field public final fullyQualifiedClassName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final previewImage:Landroid/graphics/drawable/Drawable;

.field public final priority:I

.field public final selectableByThemes:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "previewImage"    # Landroid/graphics/drawable/Drawable;
    .param p5, "additionalInformationResourceName"    # Ljava/lang/String;
    .param p6, "enabled"    # Z
    .param p7, "selectableByThemes"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    .line 70
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->previewImage:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object p5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->additionalInformationResourceName:Ljava/lang/String;

    .line 73
    iput-boolean p6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    .line 74
    iput-boolean p7, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    .line 67
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, "\", \"fullyQualifiedClassName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, "\", \"priority\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, "\", \"previewImage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->previewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v1, "\", \"additionalInformationResourceName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->additionalInformationResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, "\", \"enabled\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, "\", \"selectableByThemes\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

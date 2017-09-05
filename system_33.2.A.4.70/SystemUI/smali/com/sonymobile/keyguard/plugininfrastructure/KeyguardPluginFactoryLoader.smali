.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
.super Ljava/lang/Object;
.source "KeyguardPluginFactoryLoader.java"


# instance fields
.field private final mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

.field private final mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private mLastComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardFactoryProvider"    # Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;
    .param p3, "clockPluginUserSelectionHandler"    # Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    if-nez p2, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DefaultKeyguardFactoryProvider can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    if-nez p3, :cond_2

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string/jumbo v1, "ClockPluginUserSelectionHandler can not be null"

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    .line 85
    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    .line 72
    return-void
.end method

.method private getActiveFullPluginClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "fullPluginName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->somc_keyguard_use_default_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string/jumbo v0, "com.sonymobile.keyguard.plugin.digitalclock.DigitalClockKeyguardComponentFactory"

    .line 247
    .local v0, "fullPluginName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 242
    .local v0, "fullPluginName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->getPresentableUserSelection()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "fullPluginName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "keyguardComponentFactoryInfo":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveFullPluginClassName()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "fullPluginClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "keyguardComponentFactoryInfo":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-object v1
.end method

.method private instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 3

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 256
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 257
    .local v1, "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    :cond_0
    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 262
    .end local v1    # "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    .line 263
    return-object v1

    .line 258
    .restart local v1    # "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    .local v1, "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    goto :goto_0
.end method

.method private instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 268
    const/4 v4, 0x0

    .line 271
    .local v4, "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;

    move-result-object v2

    .line 273
    .local v2, "keyguardComponentFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    if-eqz v2, :cond_0

    .line 275
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 277
    .local v3, "keyguardComponentFactoryClassConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    if-eqz v3, :cond_0

    .line 278
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v2    # "keyguardComponentFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    .end local v3    # "keyguardComponentFactoryClassConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    .end local v4    # "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :cond_0
    :goto_0
    return-object v4

    .line 283
    .restart local v4    # "result":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "KeyguardPluginFactoryLoader"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;
    .locals 9
    .param p1, "keyguardComponentFactoryInfo"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 164
    return-object v6

    .line 169
    :cond_0
    const/4 v2, 0x0

    .line 171
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 173
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v6, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 174
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-direct {p0, v6, v7, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    :goto_0
    return-object v2

    .line 181
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;>;"
    :catch_0
    move-exception v5

    .line 183
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "KeyguardPluginFactoryLoader"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 179
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 180
    .local v4, "se":Ljava/lang/SecurityException;
    const-string/jumbo v6, "KeyguardPluginFactoryLoader"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 176
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "KeyguardPluginFactoryLoader"

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Keyguard plugin factory class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 178
    const-string/jumbo v8, " could not be found: "

    .line 177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "classType":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createComponentFactoryFromFactoryEntry(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 4
    .param p1, "entry"    # Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "loadedClass":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    .line 143
    iget-object v3, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    .line 142
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .local v0, "keyguardComponentFactoryInfo":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    .line 146
    .end local v0    # "keyguardComponentFactoryInfo":Landroid/content/ComponentName;
    .end local v1    # "loadedClass":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    :cond_0
    return-object v1
.end method

.method public createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "clockViewGroup":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 107
    .end local v0    # "clockViewGroup":Landroid/view/ViewGroup;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    const-string/jumbo v1, "KeyguardPluginFactoryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clock plugin should not assume where it shall end up. view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    return-object v0
.end method

.method public refreshLoader()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 126
    .local v0, "currentFactory":Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    .line 127
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

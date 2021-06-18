.class public final Ldagger/android/AndroidInjection;
.super Ljava/lang/Object;
.source "AndroidInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dagger.android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHasFragmentInjector(Landroid/app/Fragment;)Ldagger/android/HasFragmentInjector;
    .locals 4

    move-object v0, p0

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    instance-of v1, v0, Ldagger/android/HasFragmentInjector;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Ldagger/android/HasFragmentInjector;

    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    instance-of v1, v0, Ldagger/android/HasFragmentInjector;

    if-eqz v1, :cond_2

    .line 113
    check-cast v0, Ldagger/android/HasFragmentInjector;

    return-object v0

    .line 115
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Ldagger/android/HasFragmentInjector;

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Ldagger/android/HasFragmentInjector;

    return-object p0

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No injector was found for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    .line 44
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 46
    instance-of v1, v0, Ldagger/android/HasActivityInjector;

    if-nez v1, :cond_0

    .line 47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "%s does not implement %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-class v3, Ldagger/android/HasActivityInjector;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 48
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_0
    move-object v1, v0

    check-cast v1, Ldagger/android/HasActivityInjector;

    .line 55
    invoke-interface {v1}, Ldagger/android/HasActivityInjector;->activityInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    const-string v2, "%s.activityInjector() returned null"

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v1, v2, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method

.method public static inject(Landroid/app/Fragment;)V
    .locals 6

    const-string v0, "fragment"

    .line 86
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Ldagger/android/AndroidInjection;->findHasFragmentInjector(Landroid/app/Fragment;)Ldagger/android/HasFragmentInjector;

    move-result-object v0

    const-string v1, "dagger.android"

    const-string v2, "An injector for %s was found in %s"

    const/4 v3, 0x2

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 90
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-interface {v0}, Ldagger/android/HasFragmentInjector;->fragmentInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    const-string v2, "%s.fragmentInjector() returned null"

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v1, v2, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method

.method public static inject(Landroid/app/Service;)V
    .locals 4

    const-string v0, "service"

    .line 130
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 132
    instance-of v1, v0, Ldagger/android/HasServiceInjector;

    if-nez v1, :cond_0

    .line 133
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "%s does not implement %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-class v3, Ldagger/android/HasServiceInjector;

    .line 137
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 134
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_0
    move-object v1, v0

    check-cast v1, Ldagger/android/HasServiceInjector;

    invoke-interface {v1}, Ldagger/android/HasServiceInjector;->serviceInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    const-string v2, "%s.serviceInjector() returned null"

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v1, v2, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method

.method public static inject(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 3

    const-string v0, "broadcastReceiver"

    .line 157
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "context"

    .line 158
    invoke-static {p1, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 160
    instance-of v0, p1, Ldagger/android/HasBroadcastReceiverInjector;

    if-nez v0, :cond_0

    .line 161
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "%s does not implement %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-class v2, Ldagger/android/HasBroadcastReceiverInjector;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 162
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_0
    move-object v0, p1

    check-cast v0, Ldagger/android/HasBroadcastReceiverInjector;

    .line 169
    invoke-interface {v0}, Ldagger/android/HasBroadcastReceiverInjector;->broadcastReceiverInjector()Ldagger/android/AndroidInjector;

    move-result-object v0

    const-string v1, "%s.broadcastReceiverInjector() returned null"

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {v0, v1, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-interface {v0, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method

.method public static inject(Landroid/content/ContentProvider;)V
    .locals 4

    const-string v0, "contentProvider"

    .line 186
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 188
    instance-of v1, v0, Ldagger/android/HasContentProviderInjector;

    if-nez v1, :cond_0

    .line 189
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "%s does not implement %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-class v3, Ldagger/android/HasContentProviderInjector;

    .line 193
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 190
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_0
    move-object v1, v0

    check-cast v1, Ldagger/android/HasContentProviderInjector;

    .line 197
    invoke-interface {v1}, Ldagger/android/HasContentProviderInjector;->contentProviderInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    const-string v2, "%s.contentProviderInjector() returned null"

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v1, v2, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method

.class public LQb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQb/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lye/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "LQb/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQb/a;->a:Ljava/lang/Object;

    new-instance v0, Lye/X;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lye/X;-><init>(I)V

    sput-object v0, LQb/a;->b:Lye/X;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LQb/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->y()J

    move-result-wide v1

    sget-object v3, LQb/a;->b:Lye/X;

    new-instance v4, LQb/a$a;

    invoke-direct {v4, p0}, LQb/a$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    invoke-virtual {v3, v1, v2, v4}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(J)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, LQb/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/a;->b:Lye/X;

    invoke-virtual {v1, p0, p1}, Lye/X;->s(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQb/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LQb/a$a;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-object v0, LQb/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/a;->b:Lye/X;

    invoke-virtual {v1, p0, p1}, Lye/X;->e(J)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public final LYd/b$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYd/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/a<",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LYd/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LYd/b$a;

    invoke-direct {v0}, LYd/b$a;-><init>()V

    sput-object v0, LYd/b$a;->b:LYd/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LYd/b$a;->invoke()V

    sget-object v0, LFf/P0;->a:LFf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    return-void
.end method

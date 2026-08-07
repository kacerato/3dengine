.class public Ly6/E$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly6/E;


# direct methods
.method public constructor <init>(Ly6/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ly6/E$r;->a:Ly6/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ly6/E$r;->a:Ly6/E;

    invoke-static {v0}, Ly6/E;->v(Ly6/E;)Ly6/X;

    move-result-object v0

    invoke-virtual {v0}, Ly6/X;->i0()V

    return-void
.end method

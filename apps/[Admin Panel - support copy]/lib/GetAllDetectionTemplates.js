return [
  {
    "display_name": "Default Dashboard - Executive",
    "id":"default_dashboard/executive",
    "execution_options": ["default_dashboards"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {"module": "executive"},
  },
  {
    "display_name": "Default Workspaces - Tips",
    "id":"default_workspaces/tips",
    "execution_options": ["default_workspaces"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {"module": "tips"},
  },
  {
    "display_name": "Default Workspaces - Insights",
    "id":"default_workspaces/insights",
    "execution_options": ["default_workspaces"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {"module": "insights"},
  },
  {
    "display_name": "Weekly Churn Report",
    "id":"churn_report",
    "execution_options": ["churn_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {},
  },
  {
    "display_name": "Weekly New Logo Report",
    "id":"new_logo_report",
    "execution_options": ["new_logo_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {},
  },
  {
    "display_name": "Weekly Pipeline Report",
    "id":"weekly_pipeline_report",
    "execution_options": ["weekly_pipeline_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {},
  },
  {
    "display_name": "Account Up For Renewal",
    "id":"up_for_renewal",
    "execution_options": ["up_for_renewal"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {"arr_gap_grace":
               {"use_in_default": true}
              },
  },
  {
    "display_name": "At-Risk Opportunities",
    "id":"at_risk_opportunities",
    "execution_options": ["at_risk_opportunities"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config": {"largest_opps": 10, "confidence_constant": 1.65},
  },
  {
    "display_name": "Underperforming dimensions",
    "id":"underperforming_dimensions",
    "execution_options": ["underperforming_dimensions"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  }, {
    "display_name": "Periodic executive summary",
    "id":"periodic_executive_summary",
    "execution_options": ["periodic_executive_summary"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Sales Productivity Report",
    "id":"sales_productivity_report",
    "execution_options": ["sales_productivity_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Pipeline Coverage Alert & Summary",
    "id":"pipeline_coverage",
    "execution_options": ["pipeline_coverage"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Marketing Funnel Report",
    "id":"marketing_funnel",
    "execution_options": ["marketing_funnel"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Marketing Campaigns Report",
    "id":"campaigns_report",
    "execution_options": ["campaigns_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Sales Productivity Dashboard",
    "id":"sales_productivity_dashboard",
    "execution_options": ["sales_productivity_dashboard"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Diagnostics POC Dashboard",
    "id":"diagnostics",
    "execution_options": ["diagnostics"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "New Business Pipeline Creation Report",
    "id":"weekly_pipeline_creation_report",
    "execution_options": ["weekly_pipeline_creation_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  },
  {
    "display_name": "Target Pipeline Report",
    "id":"target_pipeline_report",
    "execution_options": ["target_pipeline_report"],
    "require_oversight": true,
    "schedule": "* * * * *",
    "type": "python",
    "state": {},
    "config":{},
  }
]